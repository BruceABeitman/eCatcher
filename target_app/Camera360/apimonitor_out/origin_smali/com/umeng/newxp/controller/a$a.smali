.class public Lcom/umeng/newxp/controller/a$a;
.super Ljava/lang/Object;
.source "AdIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/umeng/newxp/Promoter;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/Promoter;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/controller/a$a;->b:I

    iput-object p1, p0, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    iput p2, p0, Lcom/umeng/newxp/controller/a$a;->b:I

    return-void
.end method