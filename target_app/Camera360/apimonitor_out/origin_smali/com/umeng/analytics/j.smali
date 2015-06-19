.class public Lcom/umeng/analytics/j;
.super Ljava/lang/Object;
.source "UmengTimeStack.java"


# static fields
.field private static final b:I = 0x4


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    iput-object p1, p0, Lcom/umeng/analytics/j;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/j;->c:Ljava/lang/String;

    if-gez p2, :cond_10

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    :goto_f
    return-void

    :cond_10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    goto :goto_f
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/j;
    .registers 4

    invoke-static {p0}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/j;
    .registers 9

    new-instance v0, Lcom/umeng/analytics/j;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/j;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    return-object v0

    :cond_c
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v3, :cond_b

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_26
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    :try_start_2b
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_37

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/umeng/analytics/j;->a(Ljava/lang/Long;)V

    goto :goto_23

    :catch_37
    move-exception v4

    goto :goto_23
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 3

    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_f

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_e
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Lcom/umeng/analytics/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v0, p0, Lcom/umeng/analytics/j;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1b
    return-void

    :cond_1c
    iget-object v2, p0, Lcom/umeng/analytics/j;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1b
.end method

.method public a(Ljava/lang/Long;)V
    .registers 4

    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_11
    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_1d
    iget-object v3, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_30

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method
