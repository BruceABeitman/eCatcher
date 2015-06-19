.class final Lcom/bbm/ui/c/ha;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/gz;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/gz;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/ha;->a:Lcom/bbm/ui/c/gz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    const-string v0, "stickers_newest_publish_time"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/c/ha;->a:Lcom/bbm/ui/c/gz;

    invoke-static {v0}, Lcom/bbm/ui/c/gz;->a(Lcom/bbm/ui/c/gz;)V

    :cond_d
    return-void
.end method
