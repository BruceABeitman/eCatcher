.class public interface abstract Lcom/a/a/a/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/a/a/a/cn;

.field public static final b:Lcom/a/a/a/cn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/a/a/co;

    invoke-direct {v0}, Lcom/a/a/a/co;-><init>()V

    sput-object v0, Lcom/a/a/a/cn;->a:Lcom/a/a/a/cn;

    new-instance v0, Lcom/a/a/a/cp;

    invoke-direct {v0}, Lcom/a/a/a/cp;-><init>()V

    sput-object v0, Lcom/a/a/a/cn;->b:Lcom/a/a/a/cn;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/a/a/a/cb;)V
.end method
