.class final Lcom/google/android/youtube/player/YouTubeInitializationResult$a;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.field private final a:Landroid/app/Activity;
.field private final b:Landroid/content/Intent;
.field private final c:I
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "activity cannot be null"
invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeInitializationResult$a;->a:Landroid/app/Activity;
const-string v0, "intent cannot be null"
invoke-static {p2, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeInitializationResult$a;->b:Landroid/content/Intent;
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
const-string v1, "requestCode cannot be null"
invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lcom/google/android/youtube/player/YouTubeInitializationResult$a;->c:I
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/youtube/player/YouTubeInitializationResult$a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeInitializationResult$a;->a:Landroid/app/Activity;
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubeInitializationResult$a;->b:Landroid/content/Intent;
iget v2, p0, Lcom/google/android/youtube/player/YouTubeInitializationResult$a;->c:I
invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
:goto_c
:try_end_c
.catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_c} :catch_d
const-string v1, " - Lcom/google/android/youtube/player/YouTubeInitializationResult$a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
const-string v1, "Can\'t perform resolution for YouTubeInitalizationError"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
const-string v0, "YouTubeAndroidPlayerAPI"
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_c
.end method