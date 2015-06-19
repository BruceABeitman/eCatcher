.class public Lcom/facebook/widget/l;
.super Lcom/facebook/widget/m;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/m",
        "<",
        "Lcom/facebook/widget/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/facebook/widget/h;
    .registers 2

    invoke-super {p0}, Lcom/facebook/widget/m;->a()Lcom/facebook/widget/h;

    move-result-object v0

    return-object v0
.end method
