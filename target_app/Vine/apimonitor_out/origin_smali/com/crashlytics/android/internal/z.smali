.class public abstract Lcom/crashlytics/android/internal/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/crashlytics/android/internal/av;

.field private final e:Lcom/crashlytics/android/internal/ax;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics Android SDK/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/internal/Z;->a:Ljava/lang/String;

    const-string v0, "http(s?)://[^\\/]+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/internal/Z;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;Lcom/crashlytics/android/internal/ax;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p3, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requestFactory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/crashlytics/android/internal/Z;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/internal/Z;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/crashlytics/android/internal/Z;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/internal/Z;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2d
    iput-object p2, p0, Lcom/crashlytics/android/internal/Z;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/internal/Z;->d:Lcom/crashlytics/android/internal/av;

    iput-object p4, p0, Lcom/crashlytics/android/internal/Z;->e:Lcom/crashlytics/android/internal/ax;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/Map;)Lcom/crashlytics/android/internal/ay;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/crashlytics/android/internal/ay;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/internal/Z;->d:Lcom/crashlytics/android/internal/av;

    iget-object v1, p0, Lcom/crashlytics/android/internal/Z;->e:Lcom/crashlytics/android/internal/ax;

    iget-object v2, p0, Lcom/crashlytics/android/internal/Z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/crashlytics/android/internal/av;->a(Lcom/crashlytics/android/internal/ax;Ljava/lang/String;Ljava/util/Map;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/ay;->a(Z)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/internal/ay;->a(I)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "User-Agent"

    sget-object v2, Lcom/crashlytics/android/internal/Z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v2, "bca6990fc3c15a8105800c0673517a4b579634a1"

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/internal/Z;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final b()Lcom/crashlytics/android/internal/ay;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/internal/Z;->a(Ljava/util/Map;)Lcom/crashlytics/android/internal/ay;

    move-result-object v0

    return-object v0
.end method
