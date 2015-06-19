.class final Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;
.super Ljava/lang/Object;
.source "PlatformStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/platform/PlatformStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExistingContact"
.end annotation


# instance fields
.field public localId:J

.field public syncHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;->localId:J

    iput-object p3, p0, Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;->syncHash:Ljava/lang/String;

    return-void
.end method
