.class public final Lcom/instagram/creation/video/i/a;
.super Ljava/lang/Object;
.source "Clip.java"
.field private static a:I
.field private b:Ljava/util/List;
.field private c:Ljava/lang/String;
.field private d:J
.field private e:I
.field private f:J
.field private g:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, -0x1
sput v0, Lcom/instagram/creation/video/i/a;->a:I
return-void
.end method
.method public constructor <init>(IJLjava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;
iput p1, p0, Lcom/instagram/creation/video/i/a;->g:I
iput-wide p2, p0, Lcom/instagram/creation/video/i/a;->d:J
sget v0, Lcom/instagram/creation/video/i/c;->b:I
iput v0, p0, Lcom/instagram/creation/video/i/a;->e:I
iput-object p4, p0, Lcom/instagram/creation/video/i/a;->c:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(J)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;
iput-wide p1, p0, Lcom/instagram/creation/video/i/a;->f:J
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/instagram/creation/video/i/a;
.registers 6
:try_start_0
new-instance v0, Landroid/media/MediaMetadataRetriever;
invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
const/16 v1, 0xc
invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/creation/video/i/a;->c(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_29
invoke-static {v0}, Lcom/instagram/creation/video/c/a;->a(Landroid/media/MediaMetadataRetriever;)J
move-result-wide v1
new-instance v0, Lcom/instagram/creation/video/i/a;
const/4 v3, -0x1
invoke-direct {v0, v3, v1, v2, p0}, Lcom/instagram/creation/video/i/a;-><init>(IJLjava/lang/String;)V
:goto_27
:try_end_27
.catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_28
return-object v0
:catch_28
move-exception v0
:cond_29
new-instance v0, Lcom/instagram/creation/video/i/a;
const/4 v1, 0x0
sget v2, Lcom/instagram/creation/video/i/a;->a:I
int-to-long v2, v2
const/4 v4, 0x0
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/creation/video/i/a;-><init>(IJLjava/lang/String;)V
goto :goto_27
.end method
.method private static c(Ljava/lang/String;)Z
.registers 2
const-string v0, "video/avc"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "video/mp4"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "video/3gpp"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_20
const-string v0, "video/3gpp2"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public final a()J
.registers 3
iget-wide v0, p0, Lcom/instagram/creation/video/i/a;->d:J
return-wide v0
.end method
.method public final a(I)V
.registers 4
iput p1, p0, Lcom/instagram/creation/video/i/a;->e:I
iget-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/i/b;
invoke-interface {v0, p1}, Lcom/instagram/creation/video/i/b;->a(I)V
goto :goto_8
:cond_18
return-void
.end method
.method public final a(J)V
.registers 5
iget-wide v0, p0, Lcom/instagram/creation/video/i/a;->f:J
sub-long v0, p1, v0
invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/video/i/a;->b(J)V
return-void
.end method
.method public final a(Lcom/instagram/creation/video/i/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/i/a;->e:I
return v0
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/instagram/creation/video/i/a;->g:I
return-void
.end method
.method public final b(J)V
.registers 5
iput-wide p1, p0, Lcom/instagram/creation/video/i/a;->d:J
iget-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/i/b;
invoke-interface {v0, p0}, Lcom/instagram/creation/video/i/b;->a(Lcom/instagram/creation/video/i/a;)V
goto :goto_8
:cond_18
return-void
.end method
.method public final b(Lcom/instagram/creation/video/i/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/i/a;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/i/a;->c:Ljava/lang/String;
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/i/a;->c:Ljava/lang/String;
return-object v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/i/a;->g:I
return v0
.end method