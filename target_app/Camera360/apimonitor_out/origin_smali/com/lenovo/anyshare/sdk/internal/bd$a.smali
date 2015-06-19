.class public Lcom/lenovo/anyshare/sdk/internal/bd$a;
.super Ljava/lang/Object;
.source "StorageVolumeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bd$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/bd$a;->c:Ljava/lang/String;

    return-void
.end method
