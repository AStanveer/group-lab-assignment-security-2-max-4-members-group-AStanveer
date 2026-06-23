<?php
// ==========================================================
// INSECURE STARTER CONFIGURATION
// ==========================================================
// This file is intentionally simple for classroom use.
// Students should later discuss why secrets/configuration should
// not be hardcoded in real projects.

return [
    'db_host' => '127.0.0.1',
    'db_name' => 'security_bmi_lab',
    'db_user' => 'root',
    'db_pass' => '',
    'db_charset' => 'utf8mb4',
    // FIX 5: Secret used to sign/verify JWTs. In a real project this would
    // come from an environment variable, not be committed to source control.
    'jwt_secret' => 'b9f3c1a7e4d8462f9a0c7e2b5f1d8a6c3e9b7f4a1d6c8e2f5b0a9c4d7e1f3a8b'
];
