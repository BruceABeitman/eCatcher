.class public final Lcom/googlecode/mp4parser/b/a/a;
.super Ljava/lang/Object;
.source "AspectRatio.java"


# static fields
.field public static final a:Lcom/googlecode/mp4parser/b/a/a;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/googlecode/mp4parser/b/a/a;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/b/a/a;-><init>(I)V

    sput-object v0, Lcom/googlecode/mp4parser/b/a/a;->a:Lcom/googlecode/mp4parser/b/a/a;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/googlecode/mp4parser/b/a/a;->b:I

    return-void
.end method

.method public static a(I)Lcom/googlecode/mp4parser/b/a/a;
    .registers 2

    sget-object v0, Lcom/googlecode/mp4parser/b/a/a;->a:Lcom/googlecode/mp4parser/b/a/a;

    iget v0, v0, Lcom/googlecode/mp4parser/b/a/a;->b:I

    if-ne p0, v0, :cond_9

    sget-object v0, Lcom/googlecode/mp4parser/b/a/a;->a:Lcom/googlecode/mp4parser/b/a/a;

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/googlecode/mp4parser/b/a/a;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/b/a/a;-><init>(I)V

    goto :goto_8
.end method
