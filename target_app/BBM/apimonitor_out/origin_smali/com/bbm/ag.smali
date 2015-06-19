.class final Lcom/bbm/ag;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/af;


# direct methods
.method constructor <init>(Lcom/bbm/af;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ag;->a:Lcom/bbm/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ag;->a:Lcom/bbm/af;

    iget-object v0, v0, Lcom/bbm/af;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/aj;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/bbm/aj;->a()V

    :cond_f
    return-void
.end method
