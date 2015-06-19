.class public Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
.super Ljava/lang/Object;
.source "AlbumSyncModel.java"
.field public final done:Z
.field public final missingCovers:Ljava/util/Collection;
.method constructor <init>(Ljava/util/Collection;)V
.registers 3
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