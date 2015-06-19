.class final Lcom/instagram/android/fragment/ej;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/instagram/common/c/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ee;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/ee;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/fragment/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/ee;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ej;-><init>(Lcom/instagram/android/fragment/ee;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/fragment/ee;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ee;->d()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/fragment/ee;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ee;->d()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/fragment/ee;

    invoke-static {v1}, Lcom/instagram/android/fragment/ee;->a(Lcom/instagram/android/fragment/ee;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_17
    return-void
.end method
