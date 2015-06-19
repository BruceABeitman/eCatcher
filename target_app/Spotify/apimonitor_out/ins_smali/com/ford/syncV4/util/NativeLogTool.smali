.class public final Lcom/ford/syncV4/util/NativeLogTool;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/ford/syncV4/util/NativeLogTool;->a:Z
return-void
.end method
.method private static a(Lcom/ford/syncV4/util/NativeLogTool$LogTarget;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
const/4 v0, 0x0
if-eqz p2, :cond_9
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_a
:goto_9
:cond_9
return-void
:cond_a
move v1, v0
:try_start_b
:goto_b
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_9
const/16 v2, 0xfa0
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v3
sub-int/2addr v3, v1
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
add-int v3, v1, v2
invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/ford/syncV4/util/NativeLogTool$1;->a:[I
invoke-virtual {p0}, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->ordinal()I
move-result v5
aget v4, v4, v5
packed-switch v4, :pswitch_data_90
:goto_2d
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-ge v0, v4, :cond_55
const-string v4, "SyncProxy"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Calling Log.e: msg length="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, ", bytesWritten="
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_55
add-int/2addr v1, v2
goto :goto_b
:pswitch_57
invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
goto :goto_2d
:pswitch_5c
invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
goto :goto_2d
:pswitch_61
invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_64
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_64} :catch_66
move-result v0
goto :goto_2d
:catch_66
move-exception v0
const-string v1, "SyncProxy"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failure writing "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->name()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " fragments to android log:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_9
nop
:pswitch_data_90
.packed-switch 0x1
:pswitch_57
:pswitch_5c
:pswitch_61
.end packed-switch
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
sget-boolean v0, Lcom/ford/syncV4/util/NativeLogTool;->a:Z
if-eqz v0, :cond_9
sget-object v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->a:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
invoke-static {v0, p0, p1}, Lcom/ford/syncV4/util/NativeLogTool;->a(Lcom/ford/syncV4/util/NativeLogTool$LogTarget;Ljava/lang/String;Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 4
sget-boolean v0, Lcom/ford/syncV4/util/NativeLogTool;->a:Z
if-eqz v0, :cond_7
invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_7
return-void
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
sget-boolean v0, Lcom/ford/syncV4/util/NativeLogTool;->a:Z
if-eqz v0, :cond_9
sget-object v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->b:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
invoke-static {v0, p0, p1}, Lcom/ford/syncV4/util/NativeLogTool;->a(Lcom/ford/syncV4/util/NativeLogTool$LogTarget;Ljava/lang/String;Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public static c(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
sget-boolean v0, Lcom/ford/syncV4/util/NativeLogTool;->a:Z
if-eqz v0, :cond_9
sget-object v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->c:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
invoke-static {v0, p0, p1}, Lcom/ford/syncV4/util/NativeLogTool;->a(Lcom/ford/syncV4/util/NativeLogTool$LogTarget;Ljava/lang/String;Ljava/lang/String;)V
:cond_9
return-void
.end method