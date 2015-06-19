.class Lcom/google/android/gms/tagmanager/ch;
.super Lcom/google/android/gms/tagmanager/dq;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/a;->M:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ch;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->aK:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ch;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/tagmanager/ch;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 6

    const/16 v1, 0x40

    sget-object v0, Lcom/google/android/gms/tagmanager/ch;->b:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->e(Lcom/google/android/gms/internal/dz;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x42

    :goto_16
    :try_start_16
    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_21
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_16 .. :try_end_21} :catch_23

    move-result v0

    :goto_22
    return v0

    :catch_23
    move-exception v0

    const/4 v0, 0x0

    goto :goto_22

    :cond_26
    move v0, v1

    goto :goto_16
.end method
