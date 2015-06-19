.class final Lcom/instagram/k/b/c;
.super Ljava/lang/Object;
.source "UserSharedPreference.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field final synthetic a:Lcom/instagram/k/b/b;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/instagram/k/b/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/k/b/c;->a:Lcom/instagram/k/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/instagram/k/b/b;->a(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/instagram/k/b/b;->b(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Lcom/instagram/k/b/b;->b(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    :cond_1f
    return-void
.end method


# virtual methods
.method public final apply()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_e
    return-void
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    :cond_e
    return-object p0
.end method

.method public final commit()Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    iget-object v1, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/b/c;->a:Lcom/instagram/k/b/b;

    invoke-static {v0}, Lcom/instagram/k/b/b;->b(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_d
    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/b/c;->a:Lcom/instagram/k/b/b;

    invoke-static {v0}, Lcom/instagram/k/b/b;->b(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :goto_d
    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/b/c;->a:Lcom/instagram/k/b/b;

    invoke-static {v0}, Lcom/instagram/k/b/b;->b(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_d
    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 5

    iget-object v0, p0, Lcom/instagram/k/b/c;->a:Lcom/instagram/k/b/b;

    invoke-static {v0}, Lcom/instagram/k/b/b;->b(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_d
    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    iget-object v0, p0, Lcom/instagram/k/b/c;->a:Lcom/instagram/k/b/b;

    invoke-static {v0}, Lcom/instagram/k/b/b;->b(Lcom/instagram/k/b/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_d
    return-object p0

    :cond_e
    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    iget-object v0, p0, Lcom/instagram/k/b/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/k/b/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_e
    return-object p0
.end method
