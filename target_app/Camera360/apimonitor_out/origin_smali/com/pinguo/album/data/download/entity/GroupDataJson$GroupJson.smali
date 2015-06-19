.class public Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;
.super Ljava/lang/Object;
.source "GroupDataJson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/download/entity/GroupDataJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupJson"
.end annotation


# instance fields
.field public crc32s:Ljava/lang/String;

.field public ed:Ljava/lang/String;

.field public et:Ljava/lang/String;

.field public gid:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sd:Ljava/lang/String;

.field public st:Ljava/lang/String;

.field final synthetic this$0:Lcom/pinguo/album/data/download/entity/GroupDataJson;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/data/download/entity/GroupDataJson;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/data/download/entity/GroupDataJson$GroupJson;->this$0:Lcom/pinguo/album/data/download/entity/GroupDataJson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
