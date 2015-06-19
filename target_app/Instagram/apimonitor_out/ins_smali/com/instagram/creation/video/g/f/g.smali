.class public final Lcom/instagram/creation/video/g/f/g;
.super Ljava/lang/Object;
.source "VideoTranscodeHandlerFactory.java"
.field private a:Lcom/instagram/creation/video/g/b/g;
.method public constructor <init>(Lcom/instagram/creation/video/g/b/g;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/creation/video/g/f/g;->a:Lcom/instagram/creation/video/g/b/g;
return-void
.end method
.method public final a()Lcom/instagram/creation/video/g/f/h;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x12
if-lt v0, v1, :cond_12
const/4 v0, 0x1
:goto_7
invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Z)V
new-instance v0, Lcom/instagram/creation/video/g/f/i;
iget-object v1, p0, Lcom/instagram/creation/video/g/f/g;->a:Lcom/instagram/creation/video/g/b/g;
invoke-direct {v0, v1}, Lcom/instagram/creation/video/g/f/i;-><init>(Lcom/instagram/creation/video/g/b/g;)V
return-object v0
:cond_12
const/4 v0, 0x0
goto :goto_7
.end method