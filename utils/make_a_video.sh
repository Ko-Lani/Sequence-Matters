#!/bin/bash

# 객체 리스트 정의
objects=("chair" "drums" "ficus" "hotdog" "lego" "materials" "mic" "ship")

# 각 객체에 대해 ffmpeg 명령 실행
for object in "${objects[@]}"; do
    echo "Processing $object..."

    # ffmpeg 명령 실행
    ffmpeg -framerate 10 \
        -i /hdd_1/laniko/Dataset/project_page/ours/oursals_white_20_40_60_60/"$object"/test/ours_30000/renders/r_%d.png \
        -c:v libx264 \
        -pix_fmt yuv420p \
        /hdd_1/laniko/AAAI/Sequence-Matters/assets/video_blender/ours_10fps/ours_"$object".mp4

    echo "Finished processing $object."
done

echo "All videos have been processed."


# #!/bin/bash

# # 객체 리스트 정의
# objects=("chair" "drums" "ficus" "hotdog" "mic" "ship")

# # 각 객체에 대해 ffmpeg 명령 실행
# for object in "${objects[@]}"; do
#     echo "Processing $object..."

#     # 입력 및 출력 경로 정의
#     input_path="/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/supergaussian/${object}_SuperGaussian.mov"
#     output_path="/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/supergaussian/supergaussian_${object}.mp4"

#     # ffmpeg 명령 실행
#     ffmpeg -i "$input_path" -r 10 -c:v libx264 -pix_fmt yuv420p "$output_path"

#     echo "Finished processing $object."
# done

# echo "All videos have been processed."


        
    # image_folder = f'/hdd_1/laniko/Dataset/project_page/disrnerf/disr_white_white/{object}/test/ours_30000/renders'
    # output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/disrnerf/disrnerf_{object}.mp4'
        
    # image_folder = f'/hdd_1/laniko/AAAI/dataset/RENDERSR_WHITE/sg_repro/{object}/test/ours_30000/renders'
    # output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/rendersr/rendersr_{object}.mp4'
    
    # image_folder = f'/hdd_1/laniko/AAAI/dataset/BICUBIC_WHITE/{object}_bicubic/test/ours_30000/renders'
    # output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/bicubic/bicubic_{object}.mp4'
    
    # image_folder = f'/hdd_1/laniko/Dataset/project_page/ours/oursals_white_20_40_60_60/{object}/test/ours_30000/renders'
    # output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/ours/ours_{object}.mp4'
    
    # image_folder = f'/hdd_1/laniko/Dataset/project_page/nerfsr/bicubic_white/{object}_01/test/ours_30000/renders'
    # output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/nerfsr/nerfsr_{object}.mp4'