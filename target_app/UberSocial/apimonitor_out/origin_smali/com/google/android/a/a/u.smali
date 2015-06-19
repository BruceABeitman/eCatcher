.class public Lcom/google/android/a/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/a/a/q;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x123

    iput v0, p0, Lcom/google/android/a/a/u;->a:I

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/a/a/s;)V
    .registers 3

    iput p1, p0, Lcom/google/android/a/a/u;->a:I

    return-void
.end method

.method public g()Z
    .registers 3

    iget v0, p0, Lcom/google/android/a/a/u;->a:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
