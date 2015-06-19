.class public final Lcom/instagram/creation/photo/b/b;
.super Ljava/lang/Object;
.source "ExifImageData.java"


# instance fields
.field private a:Ljava/lang/Double;

.field private b:Ljava/lang/Double;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/instagram/creation/photo/b/b;->c:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/creation/photo/b/b;->c:I

    return-void
.end method

.method public final a(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/b/b;->a:Ljava/lang/Double;

    return-void
.end method

.method public final b()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/b/b;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public final b(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/b/b;->b:Ljava/lang/Double;

    return-void
.end method

.method public final c()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/b/b;->b:Ljava/lang/Double;

    return-object v0
.end method
