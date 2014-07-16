cd /tmp
git clone https://github.com/take7yo/centos_ffmpeg_h264_x86_install.git
cd /tmp/centos_ffmpeg_h264_x86_install
tar xvzf yasm-1.2.0.tar.gz
cd yasm-1.2.0
./configure
make && make install
cd /tmp/centos_ffmpeg_h264_x86_install
tar xvzf x264.tar.gz
cd x264
./configure --enable-shared
make && make install
cd /tmp/centos_ffmpeg_h264_x86_install
tar xvzf ffmpeg.tar.gz
cd ffmpeg
./configure --enable-gpl --enable-libx264
make && make install
echo "/usr/local/lib" >> /etc/ld.so.conf
ldconfig
ffmpeg
