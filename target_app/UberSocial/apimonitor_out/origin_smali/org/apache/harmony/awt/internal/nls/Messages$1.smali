.class Lorg/apache/harmony/awt/internal/nls/Messages$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/awt/internal/nls/Messages;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
.end annotation


# instance fields
.field private final synthetic val$loader:Ljava/lang/ClassLoader;

.field private final synthetic val$locale:Ljava/util/Locale;

.field private final synthetic val$resource:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .registers 4

    iput-object p1, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$resource:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$locale:Ljava/util/Locale;

    iput-object p3, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    iget-object v1, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$resource:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$locale:Ljava/util/Locale;

    iget-object v0, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    :goto_a
    invoke-static {v1, v2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_a
.end method
