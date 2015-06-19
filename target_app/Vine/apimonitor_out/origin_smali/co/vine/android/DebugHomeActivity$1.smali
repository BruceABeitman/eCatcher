.class Lco/vine/android/DebugHomeActivity$1;
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

.field final synthetic val$session:Lco/vine/android/client/Session;


# direct methods
.method constructor <init>(Lco/vine/android/DebugHomeActivity;Lco/vine/android/client/Session;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/DebugHomeActivity$1;->this$0:Lco/vine/android/DebugHomeActivity;

    iput-object p2, p0, Lco/vine/android/DebugHomeActivity$1;->val$session:Lco/vine/android/client/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "VINEDEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vine-session-id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/DebugHomeActivity$1;->val$session:Lco/vine/android/client/Session;

    invoke-virtual {v2}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
