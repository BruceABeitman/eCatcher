.class final Lcom/lenovo/lps/reaper/sdk/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/a/i;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "EventNotSendConfig"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/h;->b:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Ljava/lang/String;DLjava/util/HashMap;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "#Ignore#"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_2a

    :try_start_13
    const-string/jumbo v1, "#Ignore#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    move v0, v3

    :goto_27
    return v0

    :cond_28
    move v0, v2

    goto :goto_27

    :cond_2a
    if-eqz v1, :cond_43

    const-string/jumbo v0, "#Ignore#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3c} :catch_45

    move-result v0

    if-eqz v0, :cond_41

    :cond_3f
    move v0, v3

    goto :goto_27

    :cond_41
    move v0, v2

    goto :goto_27

    :cond_43
    move v0, v2

    goto :goto_27

    :catch_45
    move-exception v0

    move v0, v2

    goto :goto_27
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    const-string/jumbo v0, "\u0001"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/a/h;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/m;->a()Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/a/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No Report Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_25

    :catch_67
    move-exception v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "EventNotSend"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;D)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_23

    move v3, v2

    :goto_d
    if-eqz v3, :cond_2a

    const-string/jumbo v3, "#Ignore#"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v2

    :goto_19
    if-eqz v3, :cond_2a

    invoke-static {p2, p3, p4, v0}, Lcom/lenovo/lps/reaper/sdk/a/h;->a(Ljava/lang/String;DLjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_22
    return v0

    :cond_23
    move v3, v1

    goto :goto_d

    :cond_25
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_19

    :cond_2a
    move v0, v2

    goto :goto_22
.end method
