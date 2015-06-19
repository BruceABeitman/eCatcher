.class public Lcom/spotify/mobile/android/util/Assertion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/spotify/mobile/android/util/i;

.field public static final b:Lcom/spotify/mobile/android/util/i;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/util/Assertion$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/Assertion$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/util/Assertion;->a:Lcom/spotify/mobile/android/util/i;

    new-instance v0, Lcom/spotify/mobile/android/util/Assertion$2;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/Assertion$2;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/util/Assertion;->b:Lcom/spotify/mobile/android/util/i;

    const-class v0, Lcom/spotify/mobile/android/util/Assertion;

    const-class v1, Lcom/spotify/mobile/android/util/cv;

    new-instance v2, Lcom/spotify/mobile/android/util/cv;

    invoke-direct {v2}, Lcom/spotify/mobile/android/util/cv;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V

    const-class v0, Lcom/spotify/mobile/android/util/Assertion;

    const-class v1, Lcom/spotify/mobile/android/util/i;

    sget-object v2, Lcom/spotify/mobile/android/util/Assertion;->a:Lcom/spotify/mobile/android/util/i;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;)V
    .registers 3

    const-class v0, Lcom/spotify/mobile/android/util/Assertion;

    const-class v1, Lcom/spotify/mobile/android/util/i;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/i;

    invoke-interface {v0, p0}, Lcom/spotify/mobile/android/util/i;->a(Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;)V

    return-void
.end method

.method private static a(Ljava/lang/AssertionError;)V
    .registers 3

    const-class v0, Lcom/spotify/mobile/android/util/Assertion;

    const-class v1, Lcom/spotify/mobile/android/util/i;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/i;

    invoke-interface {v0, p0}, Lcom/spotify/mobile/android/util/i;->a(Ljava/lang/AssertionError;)V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_8

    const-string v0, "chars is null"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-static {p1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "[no message]"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/AssertionError;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 2

    const-string v0, "Object failed null check"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    if-nez p0, :cond_1d

    if-eqz p1, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The two objects(null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") are not equal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The two objects("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") are not equal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_5

    invoke-static {p1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/AssertionError;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/AssertionError;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;)V

    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .registers 2

    if-nez p0, :cond_5

    invoke-static {p1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    if-eqz p0, :cond_2b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The two objects("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") are equal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_2a
    return-void

    :cond_2b
    if-nez p1, :cond_2f

    const/4 v0, 0x1

    goto :goto_6

    :cond_2f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/spotify/mobile/android/util/Assertion;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-static {p1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The two objects ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") are not equal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->c(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;)V

    return-void
.end method
