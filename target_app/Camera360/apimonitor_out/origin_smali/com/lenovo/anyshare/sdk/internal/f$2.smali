.class Lcom/lenovo/anyshare/sdk/internal/f$2;
.super Ljava/lang/Object;
.source "ShareChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/lenovo/anyshare/sdk/internal/f;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/f$2;->c:Lcom/lenovo/anyshare/sdk/internal/f;

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/f$2;->a:Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/f$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f$2;->a:Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getCollection()Lcom/lenovo/channel/base/ShareCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection;->traverseContainer()V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f$2;->c:Lcom/lenovo/anyshare/sdk/internal/f;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f$2;->a:Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$2;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V

    return-void
.end method
