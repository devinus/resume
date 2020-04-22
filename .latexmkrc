$pdf_mode = 1;

$do_cd = 1;
$out_dir = '../build';

$preview_continuous_mode = $ENV{WATCH};

set_tex_cmds('--interaction=batchmode %O %S');
