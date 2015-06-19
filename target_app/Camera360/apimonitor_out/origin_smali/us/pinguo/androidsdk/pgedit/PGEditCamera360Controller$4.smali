.class Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;
.super Ljava/lang/Object;
.source "PGEditCamera360Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->changePhotoQuality(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

.field private final synthetic val$oldPhotoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->val$oldPhotoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->val$oldPhotoPath:Ljava/lang/String;

    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getRotatedDegree(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$4;->val$oldPhotoPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->savePhotoInThread(Ljava/lang/String;I)V

    return-void
.end method
