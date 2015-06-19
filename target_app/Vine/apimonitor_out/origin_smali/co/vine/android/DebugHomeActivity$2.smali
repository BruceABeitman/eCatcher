.class Lco/vine/android/DebugHomeActivity$2;
.super Ljava/lang/Object;
.source "DebugHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/DebugHomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/DebugHomeActivity;

.field final synthetic val$debugInfo:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lco/vine/android/DebugHomeActivity;Ljava/lang/StringBuilder;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/DebugHomeActivity$2;->this$0:Lco/vine/android/DebugHomeActivity;

    iput-object p2, p0, Lco/vine/android/DebugHomeActivity$2;->val$debugInfo:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lco/vine/android/DebugHomeActivity$2;->this$0:Lco/vine/android/DebugHomeActivity;

    invoke-virtual {v4}, Lco/vine/android/DebugHomeActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "vine_log.txt"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_d
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lco/vine/android/DebugHomeActivity$2;->val$debugInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    new-instance v2, Landroid/content/Intent;

    const-string v4, "co.vine.android.intent.action.SEND_LOGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lco/vine/android/DebugHomeActivity$2;->this$0:Lco/vine/android/DebugHomeActivity;

    invoke-virtual {v4, v2}, Lco/vine/android/DebugHomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    iget-object v4, p0, Lco/vine/android/DebugHomeActivity$2;->this$0:Lco/vine/android/DebugHomeActivity;

    const-string v5, "Failed to send log."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_32
.end method
