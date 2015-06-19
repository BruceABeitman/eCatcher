.class final Lcom/spotify/mobile/android/util/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/adapter/c;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/spotify/mobile/android/ui/adapter/o;

.field private final d:Landroid/support/v4/app/x;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/adapter/o;Landroid/support/v4/app/x;)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/spotify/mobile/android/util/w;->a:I

    iput v0, p0, Lcom/spotify/mobile/android/util/w;->b:I

    iput-object p1, p0, Lcom/spotify/mobile/android/util/w;->c:Lcom/spotify/mobile/android/ui/adapter/o;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/w;->d:Landroid/support/v4/app/x;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;J)V
    .registers 10

    iget-object v0, p0, Lcom/spotify/mobile/android/util/w;->c:Lcom/spotify/mobile/android/ui/adapter/o;

    iget v1, p0, Lcom/spotify/mobile/android/util/w;->a:I

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->e(I)I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/util/w;->b:I

    add-int v3, v0, v1

    iget-object v0, p0, Lcom/spotify/mobile/android/util/w;->d:Landroid/support/v4/app/x;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/w;->d:Landroid/support/v4/app/x;

    invoke-virtual {v1}, Landroid/support/v4/app/x;->a()Landroid/widget/ListView;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
