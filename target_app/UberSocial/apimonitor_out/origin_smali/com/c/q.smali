.class public interface abstract Lcom/c/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/c/v;

    invoke-direct {v0}, Lcom/c/v;-><init>()V

    sput-object v0, Lcom/c/q;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/c/l;
.end method
