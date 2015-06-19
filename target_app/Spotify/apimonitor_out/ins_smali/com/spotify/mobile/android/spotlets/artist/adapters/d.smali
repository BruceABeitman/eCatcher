.class final Lcom/spotify/mobile/android/spotlets/artist/adapters/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private final b:Ljava/util/Queue;
.method private constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;->b:Ljava/util/Queue;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;->a:Landroid/content/Context;
return-void
.end method
.method synthetic constructor <init>(Landroid/content/Context;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;-><init>(Landroid/content/Context;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/adapters/d;)Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
.registers 6
const v3, 0x7f0a01ed
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;->b:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
if-nez v0, :cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;->a:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03009c
const/4 v2, 0x0
invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->hashCode()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v3, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->setTag(ILjava/lang/Object;)V
:cond_29
const-string v1, "\'%s\' image view is obtained"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getTag(I)Ljava/lang/Object;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/adapters/d;Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)V
.registers 6
const-string v0, "\'%s\' image view is released"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const v3, 0x7f0a01ed
invoke-virtual {p1, v3}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getTag(I)Ljava/lang/Object;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/d;->b:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
return-void
.end method