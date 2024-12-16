


import os
from moviepy.editor import ImageSequenceClip

for object in ['chair', 'drums', 'ficus', 'hotdog', 'lego', 'materials', 'mic', 'ship']:
        
    # image_folder = f'/hdd_1/laniko/Dataset/project_page/disrnerf/disr_white_white/{object}/test/ours_30000/renders'
    # output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/disrnerf/disrnerf_{object}.mp4'
        
    # image_folder = f'/hdd_1/laniko/AAAI/dataset/RENDERSR_WHITE/sg_repro/{object}/test/ours_30000/renders'
    # output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/rendersr/rendersr_{object}.mp4'
    
    image_folder = f'/hdd_1/laniko/AAAI/dataset/BICUBIC_WHITE/{object}_bicubic/test/ours_30000/renders'
    output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/bicubic/bicubic_{object}.mp4'
    
    # image_folder = f'/hdd_1/laniko/Dataset/project_page/ours/oursals_white_20_40_60_60/{object}/test/ours_30000/renders'
    # output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/ours/ours_{object}.mp4'
    
    # image_folder = f'/hdd_1/laniko/Dataset/project_page/nerfsr/bicubic_white/{object}_01/test/ours_30000/renders'
    # output_video = f'/hdd_1/laniko/AAAI/ProPainter_website/assets/video_blender/nerfsr/nerfsr_{object}.mp4'
    
    # 이미지 파일 정렬 (r_0.png ~ r_199.png)
    images = [os.path.join(image_folder, f"r_{i}.png") for i in range(200) if os.path.exists(os.path.join(image_folder, f"r_{i}.png"))]

    if len(images) > 0:
        fps = 10  # 초당 프레임 수 설정

        # MoviePy로 이미지 시퀀스에서 비디오 생성
        clip = ImageSequenceClip(images, fps=fps)
        clip.write_videofile(
            output_video,
            codec="libx264",
            fps=fps,
            ffmpeg_params=["-crf", "18", "-preset", "slow"]  # 품질 향상 및 안정화
        )
                
        print(f"비디오가 생성되었습니다: {output_video}")
    else:
        print(f"{object}에 대한 이미지가 존재하지 않거나 올바르지 않습니다.")

