import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DashboardComponent } from './dashboard.component';
import { HeaderModule } from '../header/header.module';
import { RouterModule } from '@angular/router';

@NgModule({
  declarations: [DashboardComponent],
  imports: [
    CommonModule,
    HeaderModule,
    RouterModule.forChild([{ path: '', component: DashboardComponent }]),
  ],
  exports: [RouterModule],
})
export class DashboardModule {}
