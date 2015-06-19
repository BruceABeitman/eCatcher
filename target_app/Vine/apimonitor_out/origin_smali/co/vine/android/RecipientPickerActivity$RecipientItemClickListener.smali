.class public Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;
.super Ljava/lang/Object;
.source "RecipientPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/RecipientPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecipientItemClickListener"
.end annotation


# instance fields
.field private final position:I

.field private final recipient:Lco/vine/android/api/VineRecipient;

.field final synthetic this$0:Lco/vine/android/RecipientPickerActivity;


# direct methods
.method public constructor <init>(Lco/vine/android/RecipientPickerActivity;Lco/vine/android/api/VineRecipient;I)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->this$0:Lco/vine/android/RecipientPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->recipient:Lco/vine/android/api/VineRecipient;

    iput p3, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->position:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->this$0:Lco/vine/android/RecipientPickerActivity;

    iget-object v1, p0, Lco/vine/android/RecipientPickerActivity$RecipientItemClickListener;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {v0, v1}, Lco/vine/android/RecipientPickerActivity;->onItemClick(Lco/vine/android/api/VineRecipient;)V

    return-void
.end method
