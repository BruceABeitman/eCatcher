.class public Lcom/facebook/widget/j;
.super Lcom/facebook/widget/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/k",
        "<",
        "Lcom/facebook/widget/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/facebook/widget/i;
    .registers 2

    invoke-super {p0}, Lcom/facebook/widget/k;->a()Lcom/facebook/widget/i;

    move-result-object v0

    return-object v0
.end method
