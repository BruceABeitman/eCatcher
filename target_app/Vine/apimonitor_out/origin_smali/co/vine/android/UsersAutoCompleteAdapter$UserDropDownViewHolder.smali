.class Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;
.super Ljava/lang/Object;
.source "UsersAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/UsersAutoCompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserDropDownViewHolder"
.end annotation


# instance fields
.field public avatarUrl:Lco/vine/android/util/image/ImageKey;

.field public final image:Landroid/widget/ImageView;

.field final synthetic this$0:Lco/vine/android/UsersAutoCompleteAdapter;

.field public userId:J

.field public final userNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lco/vine/android/UsersAutoCompleteAdapter;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->this$0:Lco/vine/android/UsersAutoCompleteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->image:Landroid/widget/ImageView;

    const v0, 0x7f0a00c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->userNameView:Landroid/widget/TextView;

    return-void
.end method
