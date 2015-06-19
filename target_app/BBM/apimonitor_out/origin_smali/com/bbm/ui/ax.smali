.class public final Lcom/bbm/ui/ax;
.super Landroid/app/Dialog;
.source "DateTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/util/Date;

.field b:Ljava/util/Date;

.field final synthetic c:Lcom/bbm/ui/DateTimePickerView;

.field private d:Landroid/widget/TimePicker;

.field private e:Landroid/widget/DatePicker;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/String;

.field private i:I

.field private final j:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private final k:Landroid/widget/TimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/DateTimePickerView;Landroid/content/Context;ILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/bbm/ui/ax;->c:Lcom/bbm/ui/DateTimePickerView;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/ui/ax;->i:I

    new-instance v0, Lcom/bbm/ui/ay;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ay;-><init>(Lcom/bbm/ui/ax;)V

    iput-object v0, p0, Lcom/bbm/ui/ax;->j:Landroid/widget/TimePicker$OnTimeChangedListener;

    new-instance v0, Lcom/bbm/ui/az;

    invoke-direct {v0, p0}, Lcom/bbm/ui/az;-><init>(Lcom/bbm/ui/ax;)V

    iput-object v0, p0, Lcom/bbm/ui/ax;->k:Landroid/widget/TimePicker$OnTimeChangedListener;

    iput p3, p0, Lcom/bbm/ui/ax;->i:I

    if-eqz p4, :cond_22

    iput-object p4, p0, Lcom/bbm/ui/ax;->h:Ljava/lang/String;

    :goto_21
    return-void

    :cond_22
    invoke-virtual {p1}, Lcom/bbm/ui/DateTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e03ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/ax;->h:Ljava/lang/String;

    goto :goto_21
.end method

.method static synthetic a(Lcom/bbm/ui/ax;Landroid/widget/TimePicker;II)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/ax;->k:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    iget-object v0, p0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    if-le p2, v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    :cond_1e
    iget-object v0, p0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    if-lt p2, v0, :cond_72

    iget-object v0, p0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    if-le p3, v0, :cond_72

    iget-object v0, p0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    :goto_34
    iget-object v1, p0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    if-ge p2, v1, :cond_4d

    iget-object v1, p0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    :cond_4d
    iget-object v1, p0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    if-gt p2, v1, :cond_63

    iget-object v1, p0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    if-ge v0, v1, :cond_63

    iget-object v0, p0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    :cond_63
    if-eq v0, p3, :cond_6c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    :cond_6c
    iget-object v0, p0, Lcom/bbm/ui/ax;->j:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p1, v0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    return-void

    :cond_72
    move v0, p3

    goto :goto_34
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 14

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/ax;->g:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1d

    const-string v0, "Cancel Clicked"

    const-class v1, Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/bbm/ui/ax;->cancel()V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/bbm/ui/ax;->c:Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v0, v4}, Lcom/bbm/ui/DateTimePickerView;->a(Lcom/bbm/ui/DateTimePickerView;Z)Z

    return-void

    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/ax;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_17

    const-string v0, "Ok Clicked"

    const-class v1, Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/bbm/ui/ax;->i:I

    packed-switch v1, :pswitch_data_92

    iget-object v1, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v6

    iget-object v1, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v7

    iget-object v1, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v8

    iget-object v1, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v1, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v5, v0

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    :goto_64
    iget-object v1, p0, Lcom/bbm/ui/ax;->c:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/DateTimePickerView;->setDate(Ljava/util/Date;)V

    invoke-virtual {p0}, Lcom/bbm/ui/ax;->dismiss()V

    goto :goto_17

    :pswitch_71
    const-string v1, "Etc/UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    goto :goto_64

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_71
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/bbm/ui/ax;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/bbm/ui/ax;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/bbm/ui/ax;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/ax;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/ax;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/bbm/ui/ax;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f030072

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ax;->setContentView(I)V

    const v0, 0x7f0a0348

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ax;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    const v0, 0x7f0a0347

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ax;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    const v0, 0x7f0a0349

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ax;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/ax;->g:Landroid/widget/Button;

    const v0, 0x7f0a034a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ax;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/ax;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    iget-object v1, p0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    :cond_80
    iget-object v0, p0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    iget-object v1, p0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_8f
    iget-object v0, p0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    if-eqz v0, :cond_9e

    :cond_97
    iget-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    iget-object v1, p0, Lcom/bbm/ui/ax;->j:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    :cond_9e
    iget-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/bbm/ui/ax;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    const v0, 0x7f0a033b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ax;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/ax;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/bbm/ui/ax;->i:I

    packed-switch v0, :pswitch_data_150

    iget-object v0, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v0, v6}, Landroid/widget/DatePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    invoke-virtual {v0, v6}, Landroid/widget/TimePicker;->setVisibility(I)V

    :goto_cc
    iget-object v0, p0, Lcom/bbm/ui/ax;->c:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v0}, Lcom/bbm/ui/DateTimePickerView;->getDate()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    if-nez v1, :cond_109

    :cond_da
    :goto_da
    iget-object v0, p0, Lcom/bbm/ui/ax;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/ax;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v6}, Lcom/bbm/ui/ax;->setCancelable(Z)V

    return-void

    :pswitch_e8
    iget-object v0, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v0, v6}, Landroid/widget/DatePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    invoke-virtual {v0, v6}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_cc

    :pswitch_f3
    iget-object v0, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v0, v6}, Landroid/widget/DatePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    invoke-virtual {v0, v4}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_cc

    :pswitch_fe
    iget-object v0, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v0, v4}, Landroid/widget/DatePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    invoke-virtual {v0, v6}, Landroid/widget/TimePicker;->setVisibility(I)V

    goto :goto_cc

    :cond_109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget v2, p0, Lcom/bbm/ui/ax;->i:I

    if-ne v3, v2, :cond_11a

    const-string v2, "Etc/UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_11a
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Lcom/bbm/ui/ax;->e:Landroid/widget/DatePicker;

    invoke-virtual {v5, v0, v2, v3}, Landroid/widget/DatePicker;->updateDate(III)V

    iget-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/bbm/ui/ax;->d:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_da

    nop

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_f3
        :pswitch_fe
    .end packed-switch
.end method
