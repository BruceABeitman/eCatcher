.class final Lcom/spotify/mobile/android/spotlets/video/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/g;
.field private final b:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
.field private final c:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
.method private constructor <init>(Lcom/spotify/mobile/android/spotlets/video/g;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/h;->a:Lcom/spotify/mobile/android/spotlets/video/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/video/h;->b:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/video/h;->c:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/spotlets/video/g;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;B)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/video/h;-><init>(Lcom/spotify/mobile/android/spotlets/video/g;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/h;)Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/h;->b:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/video/h;)Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/h;->c:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
return-object v0
.end method