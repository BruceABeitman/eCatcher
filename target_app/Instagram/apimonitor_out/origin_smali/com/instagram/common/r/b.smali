.class public final Lcom/instagram/common/r/b;
.super Ljava/lang/Object;
.source "LongPreference.java"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/r/b;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/instagram/common/r/b;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/common/r/b;->c:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .registers 5

    iget-object v0, p0, Lcom/instagram/common/r/b;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/instagram/common/r/b;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/instagram/common/r/b;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)V
    .registers 6

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/instagram/common/r/b;->b()V

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/instagram/common/r/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/r/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/r/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/r/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
