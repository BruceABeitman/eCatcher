.class public Lcom/igexin/push/b/c;
.super Lcom/igexin/a/a/d/a;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/a/a/d/a;-><init>()V

    iput p1, p0, Lcom/igexin/push/b/c;->a:I

    return-void
.end method


# virtual methods
.method public final a_()I
    .registers 2

    const v0, 0x10006

    return v0
.end method
