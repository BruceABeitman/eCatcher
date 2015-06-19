.class public final Lcom/instagram/creation/video/j/k;
.super Ljava/lang/Object;
.source "SwitchableRenderer.java"

# interfaces
.implements Lcom/instagram/creation/video/gl/p;


# instance fields
.field private a:[Lcom/instagram/creation/video/gl/p;

.field private b:I


# direct methods
.method public constructor <init>([Lcom/instagram/creation/video/gl/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/instagram/creation/video/gl/p;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public final a(I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/instagram/creation/video/gl/p;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/g;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    iget v1, p0, Lcom/instagram/creation/video/j/k;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/instagram/creation/video/gl/p;->a(Lcom/instagram/creation/video/gl/g;)V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/p;)Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    iget v1, p0, Lcom/instagram/creation/video/j/k;->b:I

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final b(I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/instagram/creation/video/gl/p;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/creation/video/j/k;->b:I

    return-void
.end method
