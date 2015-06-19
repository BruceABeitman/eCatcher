.class final Lcom/google/android/gms/tagmanager/ai;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/tagmanager/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Lcom/google/android/gms/internal/dn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/gms/tagmanager/l;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/m;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/m;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/m;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/tagmanager/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/ar",
            "<",
            "Lcom/google/android/gms/tagmanager/af;",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Lcom/google/android/gms/internal/dn;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/tagmanager/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/ar",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/tagmanager/d;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/al;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    invoke-static {}, Lcom/google/android/gms/tagmanager/ao;->a()Lcom/google/android/gms/internal/dn;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ap;)Lcom/google/android/gms/tagmanager/z;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/dn;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/ap;",
            ")",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Lcom/google/android/gms/internal/dn;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/dn;->l:Z

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    :goto_b
    return-object v0

    :cond_c
    iget v0, p1, Lcom/google/android/gms/internal/dn;->a:I

    packed-switch v0, :pswitch_data_166

    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/google/android/gms/internal/dn;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto :goto_b

    :pswitch_28
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/ae;->a(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/dn;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->c:[Lcom/google/android/gms/internal/dn;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/dn;

    iput-object v0, v3, Lcom/google/android/gms/internal/dn;->c:[Lcom/google/android/gms/internal/dn;

    move v1, v2

    :goto_34
    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->c:[Lcom/google/android/gms/internal/dn;

    array-length v0, v0

    if-ge v1, v0, :cond_5a

    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->c:[Lcom/google/android/gms/internal/dn;

    aget-object v0, v0, v1

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/ap;->a()Lcom/google/android/gms/tagmanager/ap;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ap;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    if-ne v0, v4, :cond_4c

    sget-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto :goto_b

    :cond_4c
    iget-object v4, v3, Lcom/google/android/gms/internal/dn;->c:[Lcom/google/android/gms/internal/dn;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    :cond_5a
    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    goto :goto_b

    :pswitch_60
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/ae;->a(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/dn;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/internal/dn;->e:[Lcom/google/android/gms/internal/dn;

    array-length v1, v1

    if-eq v0, v1, :cond_85

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid serving value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto :goto_b

    :cond_85
    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/dn;

    iput-object v0, v3, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;

    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/dn;

    iput-object v0, v3, Lcom/google/android/gms/internal/dn;->e:[Lcom/google/android/gms/internal/dn;

    move v1, v2

    :goto_94
    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;

    array-length v0, v0

    if-ge v1, v0, :cond_d5

    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;

    aget-object v0, v0, v1

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/ap;->b()Lcom/google/android/gms/tagmanager/ap;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ap;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/gms/internal/dn;->e:[Lcom/google/android/gms/internal/dn;

    aget-object v4, v4, v1

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/ap;->c()Lcom/google/android/gms/tagmanager/ap;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ap;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    if-eq v0, v5, :cond_b9

    sget-object v5, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    if-ne v4, v5, :cond_bd

    :cond_b9
    sget-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto/16 :goto_b

    :cond_bd
    iget-object v5, v3, Lcom/google/android/gms/internal/dn;->d:[Lcom/google/android/gms/internal/dn;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    aput-object v0, v5, v1

    iget-object v5, v3, Lcom/google/android/gms/internal/dn;->e:[Lcom/google/android/gms/internal/dn;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_94

    :cond_d5
    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_dc
    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Macro cycle detected.  Current macro reference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/dn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".  Previous macro references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto/16 :goto_b

    :cond_110
    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->f:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/ap;->e()Lcom/google/android/gms/tagmanager/r;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/dn;->k:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/aq;->a(Lcom/google/android/gms/tagmanager/z;[I)Lcom/google/android/gms/tagmanager/z;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/dn;->f:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :pswitch_12c
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/ae;->a(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/dn;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->j:[Lcom/google/android/gms/internal/dn;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/dn;

    iput-object v0, v3, Lcom/google/android/gms/internal/dn;->j:[Lcom/google/android/gms/internal/dn;

    move v1, v2

    :goto_138
    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->j:[Lcom/google/android/gms/internal/dn;

    array-length v0, v0

    if-ge v1, v0, :cond_15f

    iget-object v0, p1, Lcom/google/android/gms/internal/dn;->j:[Lcom/google/android/gms/internal/dn;

    aget-object v0, v0, v1

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/ap;->d()Lcom/google/android/gms/tagmanager/ap;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ap;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    if-ne v0, v4, :cond_151

    sget-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto/16 :goto_b

    :cond_151
    iget-object v4, v3, Lcom/google/android/gms/internal/dn;->j:[Lcom/google/android/gms/internal/dn;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_138

    :cond_15f
    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_data_166
    .packed-switch 0x2
        :pswitch_28
        :pswitch_60
        :pswitch_dc
        :pswitch_11
        :pswitch_11
        :pswitch_12c
    .end packed-switch
.end method

.method private a(Lcom/google/android/gms/tagmanager/af;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aa;)Lcom/google/android/gms/tagmanager/z;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/af;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/aa;",
            ")",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->d:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/af;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aa;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->b(Lcom/google/android/gms/internal/dn;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;

    new-instance v2, Lcom/google/android/gms/tagmanager/z;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method private a(Lcom/google/android/gms/tagmanager/ag;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ad;)Lcom/google/android/gms/tagmanager/z;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/ag;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/ad;",
            ")",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ag;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/af;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/ad;->a()Lcom/google/android/gms/tagmanager/aa;

    move-result-object v5

    invoke-direct {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/tagmanager/af;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aa;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;

    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    :goto_3f
    return-object v0

    :cond_40
    if-eqz v1, :cond_4b

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v2

    :goto_49
    move v1, v0

    goto :goto_b

    :cond_4b
    move v0, v3

    goto :goto_49

    :cond_4d
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ag;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/af;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/ad;->b()Lcom/google/android/gms/tagmanager/aa;

    move-result-object v5

    invoke-direct {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/tagmanager/af;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aa;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;

    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    goto :goto_3f

    :cond_8a
    if-eqz v1, :cond_94

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v0

    if-eqz v0, :cond_94

    move v1, v2

    goto :goto_55

    :cond_94
    move v1, v3

    goto :goto_55

    :cond_96
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;

    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    goto :goto_3f
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/z;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/r;",
            ")",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Lcom/google/android/gms/internal/dn;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    iget v0, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->g:Lcom/google/android/gms/tagmanager/ar;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ar;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/ak;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ai;->b:Lcom/google/android/gms/tagmanager/l;

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/l;->b()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ak;->b()Lcom/google/android/gms/internal/dn;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ak;->a()Lcom/google/android/gms/tagmanager/z;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/tagmanager/al;

    if-nez v8, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Invalid macro: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    sget-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto :goto_2a

    :cond_5d
    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/al;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/al;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/al;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/al;->e()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/al;->d()Ljava/util/Map;

    move-result-object v5

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/r;->b()Lcom/google/android/gms/tagmanager/ah;

    move-result-object v7

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ah;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/al;->f()Lcom/google/android/gms/tagmanager/af;

    move-result-object v0

    move-object v2, v0

    :goto_8c
    if-nez v2, :cond_d3

    iget v0, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    sget-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto :goto_2a

    :cond_97
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v9, :cond_c1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Multiple macros active for macroName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V

    :cond_c1
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/af;

    move-object v2, v0

    goto :goto_8c

    :cond_d3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->e:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/r;->a()Lcom/google/android/gms/tagmanager/aa;

    move-result-object v3

    invoke-direct {p0, v0, v2, p2, v3}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/af;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aa;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v0

    if-eqz v0, :cond_10c

    move v0, v9

    :goto_ea
    sget-object v1, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    if-ne v3, v1, :cond_10e

    sget-object v0, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    :goto_f0
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/af;->b()Lcom/google/android/gms/internal/dn;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ai;->g:Lcom/google/android/gms/tagmanager/ar;

    new-instance v2, Lcom/google/android/gms/tagmanager/ak;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/tagmanager/ak;-><init>(Lcom/google/android/gms/tagmanager/z;Lcom/google/android/gms/internal/dn;)V

    :cond_101
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    goto/16 :goto_2a

    :cond_10c
    const/4 v0, 0x0

    goto :goto_ea

    :cond_10e
    new-instance v1, Lcom/google/android/gms/tagmanager/z;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    goto :goto_f0
.end method

.method private a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/af;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aa;)Lcom/google/android/gms/tagmanager/z;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/m;",
            ">;",
            "Lcom/google/android/gms/tagmanager/af;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/aa;",
            ")",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Lcom/google/android/gms/internal/dn;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/af;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/b;->aC:Lcom/google/android/gms/internal/b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    if-nez v0, :cond_1c

    const-string v0, "No function id in properties"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    :cond_1b
    :goto_1b
    return-object v1

    :cond_1c
    iget-object v7, v0, Lcom/google/android/gms/internal/dn;->g:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/m;

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no backing implementation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto :goto_1b

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ai;->f:Lcom/google/android/gms/tagmanager/ar;

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/ar;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/z;

    if-eqz v1, :cond_51

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ai;->b:Lcom/google/android/gms/tagmanager/l;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/l;->b()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_51
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/af;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v5

    :goto_63
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/aa;->a()Lcom/google/android/gms/tagmanager/ac;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/dn;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    invoke-interface {v3}, Lcom/google/android/gms/tagmanager/ac;->a()Lcom/google/android/gms/tagmanager/ap;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ap;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v10

    sget-object v2, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    if-ne v10, v2, :cond_8e

    sget-object v1, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto :goto_1b

    :cond_8e
    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/dn;

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/tagmanager/af;->a(Ljava/lang/String;Lcom/google/android/gms/internal/dn;)V

    move v2, v4

    :goto_a4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    goto :goto_63

    :cond_b1
    move v2, v6

    goto :goto_a4

    :cond_b3
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/m;->a(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_ef

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect keys for function "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/m;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    goto/16 :goto_1b

    :cond_ef
    if-eqz v4, :cond_109

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/m;->a()Z

    move-result v1

    if-eqz v1, :cond_109

    :goto_f7
    new-instance v1, Lcom/google/android/gms/tagmanager/z;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/m;->b()Lcom/google/android/gms/internal/dn;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    if-eqz v5, :cond_104

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->f:Lcom/google/android/gms/tagmanager/ar;

    :cond_104
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_109
    move v5, v6

    goto :goto_f7
.end method

.method private a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ah;)Lcom/google/android/gms/tagmanager/z;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/ag;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/ag;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/af;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/ag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/ag;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/af;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/ag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/ah;",
            ")",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/af;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tagmanager/ai$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/ai$1;-><init>(Lcom/google/android/gms/tagmanager/ai;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p1, p6, v0, p7}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aj;Lcom/google/android/gms/tagmanager/ah;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aj;Lcom/google/android/gms/tagmanager/ah;)Lcom/google/android/gms/tagmanager/z;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/ag;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/aj;",
            "Lcom/google/android/gms/tagmanager/ah;",
            ")",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/af;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/ag;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ah;->a()Lcom/google/android/gms/tagmanager/ad;

    move-result-object v7

    invoke-direct {p0, v0, p2, v7}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/tagmanager/ag;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ad;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p3, v0, v4, v5, v7}, Lcom/google/android/gms/tagmanager/aj;->a(Lcom/google/android/gms/tagmanager/ag;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ad;)V

    :cond_33
    if-eqz v2, :cond_3e

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/z;->b()Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v3

    :goto_3c
    move v2, v0

    goto :goto_10

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3c

    :cond_40
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_17
    iget v2, p0, Lcom/google/android/gms/tagmanager/ai;->l:I

    if-ge v0, v2, :cond_23

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_23
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/dn;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/tagmanager/y;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/y;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/ai;->a(Lcom/google/android/gms/internal/dn;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ap;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/ai;->a:Lcom/google/android/gms/tagmanager/z;

    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dn;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ao;->c(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_26

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ai;->i:Lcom/google/android/gms/tagmanager/d;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/util/Map;)V

    goto :goto_2

    :cond_26
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4c

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_46

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ai;->i:Lcom/google/android/gms/tagmanager/d;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/d;->a(Ljava/util/Map;)V

    goto :goto_30

    :cond_46
    const-string v0, "pushAfterEvaluate: value not a Map"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V

    goto :goto_30

    :cond_4c
    const-string v0, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ai;->k:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/ai;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->b:Lcom/google/android/gms/tagmanager/l;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/l;->a()Lcom/google/android/gms/tagmanager/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/k;->a()Lcom/google/android/gms/tagmanager/aw;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->h:Ljava/util/Set;

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/aw;->b()Lcom/google/android/gms/tagmanager/ah;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Lcom/google/android/gms/tagmanager/ai$2;

    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/ai$2;-><init>(Lcom/google/android/gms/tagmanager/ai;)V

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aj;Lcom/google/android/gms/tagmanager/ah;)Lcom/google/android/gms/tagmanager/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/af;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/ai;->c:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/aw;->a()Lcom/google/android/gms/tagmanager/aa;

    move-result-object v5

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/af;Ljava/util/Set;Lcom/google/android/gms/tagmanager/aa;)Lcom/google/android/gms/tagmanager/z;
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_47

    goto :goto_2c

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4a
    const/4 v0, 0x0

    :try_start_4b
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ai;->b(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_47

    monitor-exit p0

    return-void
.end method
