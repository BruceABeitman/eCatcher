.class public Lcom/igexin/push/core/bean/d;
.super Lcom/igexin/push/core/bean/BaseAction;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/igexin/push/core/bean/d;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/push/core/bean/d;->a:J

    return-void
.end method
