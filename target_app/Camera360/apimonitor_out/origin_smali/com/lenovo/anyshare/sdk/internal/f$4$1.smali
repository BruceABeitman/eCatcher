.class Lcom/lenovo/anyshare/sdk/internal/f$4$1;
.super Ljava/lang/Object;
.source "ShareChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/anyshare/sdk/internal/f$4;->onLocalUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/f$4;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/f$4;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/f$4$1;->a:Lcom/lenovo/anyshare/sdk/internal/f$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$4$1;->a:Lcom/lenovo/anyshare/sdk/internal/f$4;

    iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/f$4;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$4$1;->a:Lcom/lenovo/anyshare/sdk/internal/f$4;

    iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/f$4;->a:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;

    invoke-interface {v0}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus()V

    :cond_11
    return-void
.end method
