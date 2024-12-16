#!/bin/bash

# 객체 리스트 정의
objects=("chair" "drums" "ficus" "hotdog" "lego" "materials" "mic" "ship")

# 각 객체에 대해 비디오 병합 실행
for object in "${objects[@]}"; do
    echo "Processing $object..."

    # 입력 비디오 파일 경로
    video1_path="/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/bicubic/bicubic_${object}.mp4"
    video2_path="/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/ours/ours_${object}.mp4"

    # 출력 비디오 파일 경로
    output_path="/hdd_1/laniko/AAAI/ProPainter_website/assets/video_comparison/bicubic_ours_${object}.mp4"

    # 두 비디오의 길이를 맞추기 위해 FFmpeg 필터 사용
    ffmpeg -i "$video1_path" -i "$video2_path" \
        -filter_complex "[0:v]setpts=PTS-STARTPTS[v0];[1:v]setpts=PTS-STARTPTS[v1];[v0][v1]hstack=inputs=2[out]" \
        -map "[out]" -map 0:a? -map 1:a? \
        -c:v libx264 -crf 23 -preset fast -c:a aac -shortest "$output_path"

    echo "Combined video saved to: $output_path"
done

echo "All videos have been processed."
