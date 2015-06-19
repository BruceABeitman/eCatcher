.class final Lcom/instagram/common/analytics/aa;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/x;


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/x;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/analytics/aa;->a:Lcom/instagram/common/analytics/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/common/analytics/aa;->a:Lcom/instagram/common/analytics/x;

    sget v1, Lcom/instagram/common/analytics/an;->b:I

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/x;I)V

    return-void
.end method
