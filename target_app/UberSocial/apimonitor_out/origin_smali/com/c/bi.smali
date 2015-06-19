.class public interface abstract Lcom/c/bi;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/c/bm;

    invoke-direct {v0}, Lcom/c/bm;-><init>()V

    sput-object v0, Lcom/c/bi;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract b()Lcom/c/bq;
.end method
