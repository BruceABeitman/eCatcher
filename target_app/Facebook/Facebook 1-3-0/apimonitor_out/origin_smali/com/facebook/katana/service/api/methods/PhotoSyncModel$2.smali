.class Lcom/facebook/katana/service/api/methods/PhotoSyncModel$2;
.super Ljava/lang/Object;
.source "PhotoSyncModel.java"

# interfaces
.implements Lcom/facebook/katana/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->cursorFactoryForPhotos(Landroid/content/Context;Ljava/util/Collection;)Lcom/facebook/katana/util/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/util/Factory",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$finalContext:Landroid/content/Context;

.field private final synthetic val$finalPhotos:Ljava/util/Collection;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$2;->val$finalContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$2;->val$finalPhotos:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public make()Landroid/database/Cursor;
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$2;->val$finalContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$2;->val$finalPhotos:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->cursorForPhotos(Landroid/content/Context;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic make()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$2;->make()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
