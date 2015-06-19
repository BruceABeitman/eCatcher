.class public Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->c:Ljava/util/HashMap;

    return-void
.end method

.method private check(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_7

    const/4 v2, 0x5

    if-le p1, v2, :cond_25

    :cond_7
    const-string/jumbo v2, "ParamMap"

    const-string/jumbo v3, "index of custom parameter should greater than %s and less than %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return v0

    :cond_25
    if-nez p2, :cond_31

    const-string/jumbo v1, "ParamMap"

    const-string/jumbo v2, "name of custom parameter should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_31
    if-nez p3, :cond_3d

    const-string/jumbo v1, "ParamMap"

    const-string/jumbo v2, "value of custom parameter should not be null or empty."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_3d
    move v0, v1

    goto :goto_24
.end method

.method private revise(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_14

    const-string/jumbo v0, "ParamMap"

    const-string/jumbo v1, "Each length of parameters value should less than 128 character, or will be CUT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object p1

    :cond_14
    :goto_14
    return-object p1

    :catch_15
    move-exception v0

    goto :goto_14
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->b:[Ljava/lang/String;

    return-void
.end method

.method public clone()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .registers 6

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_29

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_26

    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_29
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_33

    :cond_4f
    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->clone()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v0

    return-object v0
.end method

.method public getExtraParams()Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 4

    if-lez p1, :cond_18

    const/4 v0, 0x5

    if-gt p1, v0, :cond_18

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_11

    const-string/jumbo v0, ""

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_10

    :cond_18
    const-string/jumbo v0, ""

    goto :goto_10
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 4

    if-lez p1, :cond_18

    const/4 v0, 0x5

    if-gt p1, v0, :cond_18

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->b:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_11

    const-string/jumbo v0, ""

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->b:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_10

    :cond_18
    const-string/jumbo v0, ""

    goto :goto_10
.end method

.method public isEmpty()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    :goto_15
    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public put(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->check(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->a:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    const/16 v2, 0x80

    invoke-direct {p0, p2, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->b:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    const/16 v2, 0x200

    invoke-direct {p0, p3, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->revise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :catch_20
    move-exception v0

    const-string/jumbo v1, "ParamMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ParamMap.put Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3f
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putExtras(Ljava/util/Map;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method
