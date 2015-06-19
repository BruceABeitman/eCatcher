.class public interface abstract Lcom/google/android/youtube/player/YouTubePlayer;
.super Ljava/lang/Object;
.field public static final FULLSCREEN_FLAG_ALWAYS_FULLSCREEN_IN_LANDSCAPE:I = 0x4
.field public static final FULLSCREEN_FLAG_CONTROL_ORIENTATION:I = 0x1
.field public static final FULLSCREEN_FLAG_CONTROL_SYSTEM_UI:I = 0x2
.field public static final FULLSCREEN_FLAG_CUSTOM_LAYOUT:I = 0x8
.method public abstract addFullscreenControlFlag(I)V
.end method
.method public abstract cuePlaylist(Ljava/lang/String;)V
.end method
.method public abstract cuePlaylist(Ljava/lang/String;II)V
.end method
.method public abstract cueVideo(Ljava/lang/String;)V
.end method
.method public abstract cueVideo(Ljava/lang/String;I)V
.end method
.method public abstract cueVideos(Ljava/util/List;)V
.end method
.method public abstract cueVideos(Ljava/util/List;II)V
.end method
.method public abstract getCurrentTimeMillis()I
.end method
.method public abstract getDurationMillis()I
.end method
.method public abstract getFullscreenControlFlags()I
.end method
.method public abstract hasNext()Z
.end method
.method public abstract hasPrevious()Z
.end method
.method public abstract isPlaying()Z
.end method
.method public abstract loadPlaylist(Ljava/lang/String;)V
.end method
.method public abstract loadPlaylist(Ljava/lang/String;II)V
.end method
.method public abstract loadVideo(Ljava/lang/String;)V
.end method
.method public abstract loadVideo(Ljava/lang/String;I)V
.end method
.method public abstract loadVideos(Ljava/util/List;)V
.end method
.method public abstract loadVideos(Ljava/util/List;II)V
.end method
.method public abstract next()V
.end method
.method public abstract pause()V
.end method
.method public abstract play()V
.end method
.method public abstract previous()V
.end method
.method public abstract release()V
.end method
.method public abstract seekRelativeMillis(I)V
.end method
.method public abstract seekToMillis(I)V
.end method
.method public abstract setFullscreen(Z)V
.end method
.method public abstract setFullscreenControlFlags(I)V
.end method
.method public abstract setManageAudioFocus(Z)V
.end method
.method public abstract setOnFullscreenListener(Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V
.end method
.method public abstract setPlaybackEventListener(Lcom/google/android/youtube/player/YouTubePlayer$PlaybackEventListener;)V
.end method
.method public abstract setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V
.end method
.method public abstract setPlayerStyle(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;)V
.end method
.method public abstract setPlaylistEventListener(Lcom/google/android/youtube/player/YouTubePlayer$PlaylistEventListener;)V
.end method
.method public abstract setShowFullscreenButton(Z)V
.end method