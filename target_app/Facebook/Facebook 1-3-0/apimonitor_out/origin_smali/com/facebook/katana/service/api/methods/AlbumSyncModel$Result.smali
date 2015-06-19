.class public Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
.super Ljava/lang/Object;
.source "AlbumSyncModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/AlbumSyncModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final done:Z

.field public final missingCovers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;->done:Z

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;->missingCovers:Ljava/util/Collection;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;->done:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;->missingCovers:Ljava/util/Collection;

    return-void
.end method
