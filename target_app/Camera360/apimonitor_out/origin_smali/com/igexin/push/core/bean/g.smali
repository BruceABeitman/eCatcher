.class public Lcom/igexin/push/core/bean/g;
.super Lcom/igexin/push/core/bean/BaseAction;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setActionId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/g;->a:Ljava/lang/String;

    return-void
.end method
