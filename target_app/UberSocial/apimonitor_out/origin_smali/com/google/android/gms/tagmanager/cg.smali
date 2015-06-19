.class Lcom/google/android/gms/tagmanager/cg;
.super Lcom/google/android/gms/tagmanager/z;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/a;->K:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->n:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->o:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->aK:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->aE:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    sget-object v0, Lcom/google/android/gms/tagmanager/cg;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/cg;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/cg;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
    .registers 7

    sget-object v0, Lcom/google/android/gms/tagmanager/cg;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    sget-object v1, Lcom/google/android/gms/tagmanager/cg;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/dz;

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v2

    if-eq v0, v2, :cond_20

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v2

    if-ne v1, v2, :cond_25

    :cond_20
    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    const/16 v3, 0x40

    sget-object v2, Lcom/google/android/gms/tagmanager/cg;->d:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/dz;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/dw;->e(Lcom/google/android/gms/internal/dz;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v2, 0x42

    move v3, v2

    :cond_3c
    const/4 v4, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/cg;->e:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/dz;

    if-eqz v2, :cond_61

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/dw;->c(Lcom/google/android/gms/internal/dz;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->b()Ljava/lang/Long;

    move-result-object v4

    if-ne v2, v4, :cond_56

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    goto :goto_24

    :cond_56
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    if-gez v2, :cond_62

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    goto :goto_24

    :cond_61
    move v2, v4

    :cond_62
    :try_start_62
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-lt v3, v2, :cond_83

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_83
    if-nez v0, :cond_8a

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    goto :goto_24

    :cond_8a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;
    :try_end_8d
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_62 .. :try_end_8d} :catch_8f

    move-result-object v0

    goto :goto_24

    :catch_8f
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    goto :goto_24
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
