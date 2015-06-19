.class public final Lcom/instagram/f/b/a;
.super Ljava/lang/Object;
.source "InboxCountInfo.java"


# instance fields
.field a:I

.field b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/f/b/a;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/f/b/a;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/f/b/a;->b:J

    return-wide v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/instagram/f/b/a;->a:I

    return v0
.end method
