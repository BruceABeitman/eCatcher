.class final Lcom/instagram/creation/video/f/ba;
.super Landroid/content/BroadcastReceiver;
.source "VideoEditFragment.java"
.field final synthetic a:Lcom/instagram/creation/video/f/ar;
.method private constructor <init>(Lcom/instagram/creation/video/f/ar;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/ba;->a:Lcom/instagram/creation/video/f/ar;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/creation/video/f/ar;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/ba;-><init>(Lcom/instagram/creation/video/f/ar;)V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "VideoEditFragment.INTENT_ACTION_EDIT_MODE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1c
iget-object v0, p0, Lcom/instagram/creation/video/f/ba;->a:Lcom/instagram/creation/video/f/ar;
const-string v1, "VideoEditFragment.EDIT_MODE"
sget-object v2, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;
iget v2, v2, Lcom/instagram/creation/video/f/av;->d:I
invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
invoke-static {v0, v1}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/f/ar;I)V
:cond_1b
:goto_1b
return-void
:cond_1c
const-string v1, "VideoEditFragment.INTENT_ACTION_START_SHARE_SCREEN"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/instagram/creation/video/f/ba;->a:Lcom/instagram/creation/video/f/ar;
invoke-static {v0}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/f/ar;)V
goto :goto_1b
.end method