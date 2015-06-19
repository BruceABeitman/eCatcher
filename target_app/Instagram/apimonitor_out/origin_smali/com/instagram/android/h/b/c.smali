.class public final Lcom/instagram/android/h/b/c;
.super Ljava/lang/Object;
.source "UserForEditing.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field private d:Lcom/instagram/user/c/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/instagram/android/h/b/c;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/instagram/android/h/b/c;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/instagram/android/h/b/c;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/instagram/android/h/b/c;->c:I

    iput v0, p0, Lcom/instagram/android/h/b/c;->i:I

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/android/h/b/c;
    .registers 4

    new-instance v0, Lcom/instagram/android/h/b/c;

    invoke-direct {v0}, Lcom/instagram/android/h/b/c;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/instagram/user/c/a;->a(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    const-string v1, "phone_number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/h/b/c;->e:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/h/b/c;->f:Ljava/lang/String;

    const-string v1, "gender"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    sget v2, Lcom/instagram/android/h/b/c;->c:I

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v1

    iput v1, v0, Lcom/instagram/android/h/b/c;->i:I

    iget-object v1, v0, Lcom/instagram/android/h/b/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "country_code"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/h/b/c;->g:Ljava/lang/String;

    const-string v1, "national_number"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/h/b/c;->h:Ljava/lang/String;

    :cond_52
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/android/h/b/c;->i:I

    return-void
.end method

.method public final a(Lcom/instagram/user/c/e;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/e;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0, p1}, Lcom/instagram/user/c/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final e()Lcom/instagram/user/c/e;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/h/b/c;->e:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/h/b/c;->f:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lcom/instagram/android/h/b/c;->i:I

    return v0
.end method

.method public final k()Lcom/instagram/user/c/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/b/c;->d:Lcom/instagram/user/c/a;

    return-object v0
.end method
